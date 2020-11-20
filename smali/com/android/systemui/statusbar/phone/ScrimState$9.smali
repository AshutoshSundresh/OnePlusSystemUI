.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$9;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    const/4 p1, 0x0

    .line 264
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 265
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 266
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 269
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    const v0, 0x3f19999a    # 0.6f

    .line 270
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    const-wide/16 v0, 0xdc

    .line 272
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 273
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    return-void
.end method
