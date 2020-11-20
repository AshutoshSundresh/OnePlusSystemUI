.class public Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;
.super Ljava/lang/Object;
.source "OpCanvasAodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpCanvasAodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;",
            ">;"
        }
    .end annotation
.end field

.field mScale:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 288
    iput v0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mScale:F

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private static cacheCanvasAodBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "OpCanvasAodHelper:Data"

    const-string v1, "canvasAod"

    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 393
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->getCanvasCacheBitmap()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 397
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 399
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cache bitmap success "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_1
    :try_start_3
    const-string p1, "cacheCanvasAodBitmap occur error"

    .line 403
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_2
    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_2

    .line 407
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 410
    :catch_3
    :cond_2
    throw p0
.end method

.method private static getBitmapFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OpCanvasAodHelper:Data"

    if-nez v0, :cond_0

    .line 428
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    invoke-static {v0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 432
    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    :try_start_1
    invoke-static {p0, p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->cacheCanvasAodBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    const-string v0, "getBitmapFromUri occur error"

    .line 435
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    const-string p1, "getBitmapFromUri uri is empty try to use cache"

    .line 438
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->loadBitmapFromCache(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static getJsonFromFile(Ljava/io/FileReader;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 454
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 466
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string v2, "OpCanvasAodHelper:Data"

    const-string v3, "getJsonFromFile occur error"

    .line 462
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_2
    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_2

    .line 466
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 469
    :catch_3
    :cond_2
    throw p0
.end method

.method private static loadBitmapFromCache(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "canvasAod"

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 446
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->getCanvasCacheBitmap()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static loadFromCache(Landroid/content/Context;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;-><init>()V

    .line 358
    invoke-static {p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->loadBitmapFromCache(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    iput-object v1, v0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mBitmap:Landroid/graphics/Bitmap;

    .line 365
    invoke-static {p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->loadJsonFromCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-static {v0, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->parseJsonObjet(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;Ljava/lang/String;)V

    return-object v0

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "json string is empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "loadFromCache bitmap is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadJsonFromCache(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "canvasAod"

    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 378
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->getCanvasCacheDetail()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "OpCanvasAodHelper:Data"

    if-eqz p0, :cond_0

    .line 381
    :try_start_0
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getJsonFromFile(Ljava/io/FileReader;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "loadJsonFromCache occur error"

    .line 383
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "loadFromCache: json string cache is not exists"

    .line 386
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;-><init>()V

    .line 295
    invoke-static {p0, p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getBitmapFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 299
    iput-object p1, v0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mBitmap:Landroid/graphics/Bitmap;

    .line 302
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "OpCanvasAodHelper:Data"

    if-nez p1, :cond_4

    .line 303
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "r"

    .line 307
    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 308
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 311
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v3}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getJsonFromFile(Ljava/io/FileReader;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v3, "canvasAod"

    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 315
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->getCanvasCacheDetail()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 318
    :try_start_3
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :try_start_4
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 325
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    :goto_1
    :try_start_6
    const-string v4, "parse: write file occur error"

    .line 321
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_2
    if-eqz p1, :cond_2

    goto :goto_5

    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v3, :cond_1

    .line 325
    :try_start_7
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 328
    :catch_3
    :cond_1
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception p2

    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception p1

    move-object p2, v1

    move-object v1, p1

    move-object p1, p2

    :goto_4
    :try_start_9
    const-string v3, "parse: retrieveFileFromUri occur error"

    .line 330
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p1, :cond_2

    .line 334
    :goto_5
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_2
    move-object v1, p2

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object v1, p1

    :goto_6
    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 337
    :catch_8
    :cond_3
    throw p0

    :cond_4
    const-string p1, "file is empty"

    .line 339
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "json string is empty, try to use cache"

    .line 343
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->loadJsonFromCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 352
    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->parseJsonObjet(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;Ljava/lang/String;)V

    return-object v0

    .line 348
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "json is empty"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bitmap is empty"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseJsonObjet(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;Ljava/lang/String;)V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 476
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "scale"

    .line 477
    invoke-virtual {v2, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 478
    iput p1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mScale:F

    const-string p1, "points"

    .line 479
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;->parseArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 481
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no points"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "OpCanvasAodHelper:Data"

    const-string v0, "parse: parse json object occur error"

    .line 485
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parse json failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getScale()F
    .locals 0

    .line 414
    iget p0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->mScale:F

    return p0
.end method
