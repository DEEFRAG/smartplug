.class public Lcom/avos/avospush/notification/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avos/avospush/notification/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 199
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 202
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 203
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mPriority:I

    .line 205
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 491
    if-eqz p2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/avos/avospush/notification/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcom/avos/avospush/notification/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 560
    # getter for: Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/avos/avospush/notification/NotificationCompat;->access$000()Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;->build(Lcom/avos/avospush/notification/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    # getter for: Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/avos/avospush/notification/NotificationCompat;->access$000()Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;->build(Lcom/avos/avospush/notification/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 469
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 470
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 320
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 301
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 332
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 272
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 264
    return-object p0
.end method

.method public setDefaults(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 484
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 487
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 344
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 359
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 360
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 361
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 387
    return-object p0
.end method

.method public setLights(III)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 428
    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 429
    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 430
    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_0

    move v0, v1

    .line 431
    .local v0, "showLights":Z
    :goto_0
    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 434
    return-object p0

    .end local v0    # "showLights":Z
    :cond_0
    move v0, v2

    .line 430
    goto :goto_0

    .restart local v0    # "showLights":Z
    :cond_1
    move v1, v2

    .line 431
    goto :goto_1
.end method

.method public setNumber(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNumber:I

    .line 293
    return-object p0
.end method

.method public setOngoing(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 450
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 451
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 459
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 460
    return-object p0
.end method

.method public setPriority(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 508
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mPriority:I

    .line 509
    return-object p0
.end method

.method public setProgress(IIZ)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 309
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressMax:I

    .line 310
    iput p2, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgress:I

    .line 311
    iput-boolean p3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 312
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 240
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 255
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 256
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 395
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 396
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 407
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 408
    return-object p0
.end method

.method public setStyle(Lcom/avos/avospush/notification/NotificationCompat$Style;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Lcom/avos/avospush/notification/NotificationCompat$Style;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 540
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    .line 541
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;->setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V

    .line 545
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 284
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 369
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 378
    iput-object p2, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 379
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mUseChronometer:Z

    .line 228
    return-object p0
.end method

.method public setVibrate([J)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 417
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 418
    return-object p0
.end method

.method public setWhen(J)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 211
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 212
    return-object p0
.end method
