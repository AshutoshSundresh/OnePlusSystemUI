.class Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "BottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fabAlignmentMode:I

.field fabAttached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1230
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1218
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;->fabAlignmentMode:I

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;->fabAttached:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1214
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1225
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1226
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;->fabAlignmentMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$SavedState;->fabAttached:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
