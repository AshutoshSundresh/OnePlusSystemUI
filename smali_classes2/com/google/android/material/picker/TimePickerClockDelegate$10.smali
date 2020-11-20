.class Lcom/google/android/material/picker/TimePickerClockDelegate$10;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_3

    .line 1140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1141
    sget p2, Lcom/google/android/material/R$id;->am_label:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1142
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1143
    :cond_0
    sget p2, Lcom/google/android/material/R$id;->pm_label:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 1144
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1145
    :cond_1
    sget p2, Lcom/google/android/material/R$id;->hours:I

    if-ne p1, p2, :cond_2

    .line 1146
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v0, v1, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 1147
    :cond_2
    sget p2, Lcom/google/android/material/R$id;->minutes:I

    if-ne p1, p2, :cond_3

    .line 1148
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v1, v1, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    .line 1153
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2300(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    nop

    :cond_3
    return-void
.end method
