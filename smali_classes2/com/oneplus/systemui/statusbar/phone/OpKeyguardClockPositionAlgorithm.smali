.class public Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "OpKeyguardClockPositionAlgorithm.java"


# instance fields
.field private mKeyguardClockY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public opGetMaxClockY()I
    .locals 2

    const-string v0, "debug.opgetmaxclocky.test"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opGetMaxClockY(), debugTest != 0, debugTest:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "test"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 69
    :cond_0
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    return p0
.end method

.method public opLoadDimens(Landroid/content/res/Resources;)V
    .locals 3

    .line 46
    sget v0, Lcom/android/systemui/R$dimen;->op_control_margin_space5:I

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_lock_icon_size:I

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_lock_icon_margin_bottom:I

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_differ_status_bar_height_with_spec:I

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opLoadDimens(), mKeyguardClockY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", opKeyguardClockY:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", test op_control_margin_space5: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/R$dimen;->op_control_margin_space5:I

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", test op_keyguard_clock_info_view_content_lock_icon_size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_lock_icon_size:I

    .line 56
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", test op_keyguard_clock_info_view_content_lock_icon_margin_bottom: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_lock_icon_margin_bottom:I

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", op_keyguard_clock_info_view_content_differ_status_bar_height_with_spec: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_differ_status_bar_height_with_spec:I

    .line 58
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", (old) op_keyguard_clock_y:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_y:I

    .line 59
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", (old) keyguard_affordance_height:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpKeyguardClockPositionAlgorithm"

    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
