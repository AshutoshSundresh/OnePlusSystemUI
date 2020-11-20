.class Landroidx/appcompat/app/AlertController$AlertParams$3;
.super Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1504
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c

    const p3, 0x1020014

    .line 1506
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1507
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 1508
    sget v0, Landroidx/appcompat/R$id;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1510
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mSubItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v5, p1, :cond_0

    .line 1511
    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 1514
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-le v4, v2, :cond_1

    .line 1515
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_multiline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 1516
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1517
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1518
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 1519
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1520
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1521
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 1522
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1524
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 1525
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1528
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    if-ne p1, v0, :cond_5

    .line 1529
    invoke-virtual {p3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 1531
    :cond_5
    invoke-virtual {p3, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1533
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 1535
    :cond_6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1536
    sget v0, Landroidx/appcompat/R$id;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1538
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mSubItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    array-length v5, v4

    if-le v5, p1, :cond_7

    .line 1539
    aget-object p1, v4, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    :cond_7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    .line 1542
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-le p1, v2, :cond_8

    .line 1543
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_multiline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1544
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1545
    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1546
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1547
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1548
    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1549
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1550
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1552
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1553
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_c
    :goto_3
    return-object p2
.end method
