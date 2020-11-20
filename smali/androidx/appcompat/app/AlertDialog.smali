.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private isShow:Z

.field final mAlert:Landroidx/appcompat/app/AlertController;

.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 108
    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 110
    new-instance p2, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p3, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object p2, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 111
    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/app/AlertDialog;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Landroidx/appcompat/app/AlertDialog;->isShow:Z

    return p0
.end method

.method static synthetic access$002(Landroidx/appcompat/app/AlertDialog;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertDialog;->isShow:Z

    return p1
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    .line 129
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 160
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 334
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 338
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-boolean v0, v0, Landroidx/appcompat/app/AlertController;->mBottomShow:Z

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$1;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-static {v0, v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 310
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController;->installContent()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 364
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 365
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-boolean v0, v0, Landroidx/appcompat/app/AlertController;->mBottomShow:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/appcompat/app/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 318
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 326
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .line 250
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
