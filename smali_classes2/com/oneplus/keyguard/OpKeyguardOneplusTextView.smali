.class public Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;
.super Landroid/widget/TextView;
.source "OpKeyguardOneplusTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTextWithOneplusColor(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 6

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$color;->op_control_accent_color_red_light:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$color;->op_control_accent_color_red_dark:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "1"

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-ltz v2, :cond_2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2236

    if-eq v3, v4, :cond_2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpColorTextView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 53
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->getTextWithOneplusColor(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
