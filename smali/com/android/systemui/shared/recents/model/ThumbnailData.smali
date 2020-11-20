.class public Lcom/android/systemui/shared/recents/model/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# static fields
.field private static sMethodGetScale:Ljava/lang/reflect/Method;

.field private static sMethodIsReducedResolution:Ljava/lang/reflect/Method;


# instance fields
.field public thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailData"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 93
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    .line 96
    :try_start_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getRotation()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    :try_start_2
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->isLowResolution()Z
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    goto :goto_1

    :catch_2
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 113
    :try_start_3
    sget-object v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->sMethodIsReducedResolution:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 114
    const-class v2, Landroid/app/ActivityManager$TaskSnapshot;

    const-string v3, "isReducedResolution"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->sMethodIsReducedResolution:Ljava/lang/reflect/Method;

    .line 116
    :cond_0
    sget-object v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->sMethodIsReducedResolution:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    .line 128
    :catch_3
    :cond_1
    :try_start_4
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I
    :try_end_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v1

    :catch_4
    if-eqz v0, :cond_3

    .line 134
    :try_start_5
    sget-object p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->sMethodGetScale:Ljava/lang/reflect/Method;

    if-nez p0, :cond_2

    .line 135
    const-class p0, Landroid/app/ActivityManager$TaskSnapshot;

    const-string v0, "getScale"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->sMethodGetScale:Ljava/lang/reflect/Method;

    .line 137
    :cond_2
    sget-object p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->sMethodGetScale:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5

    .line 141
    :catch_5
    :cond_3
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    .line 142
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->isTranslucent()Z

    .line 143
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    .line 144
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    .line 150
    :try_start_6
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getId()J
    :try_end_6
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
