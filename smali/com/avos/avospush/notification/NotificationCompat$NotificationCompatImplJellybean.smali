.class Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/avos/avospush/notification/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 21
    .param p1, "b"    # Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .prologue
    .line 110
    new-instance v1, Lcom/avos/avospush/notification/NotificationCompatJellybean;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressMax:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mPriority:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/avos/avospush/notification/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 115
    .local v1, "jbBuilder":Lcom/avos/avospush/notification/NotificationCompatJellybean;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/avos/avospush/notification/NotificationCompat$Action;

    .line 116
    .local v18, "action":Lcom/avos/avospush/notification/NotificationCompat$Action;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Action;->icon:I

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/avos/avospush/notification/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/avos/avospush/notification/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 118
    .end local v18    # "action":Lcom/avos/avospush/notification/NotificationCompat$Action;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    if-eqz v2, :cond_1

    .line 119
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    instance-of v2, v2, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 120
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;

    .line 121
    .local v20, "style":Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 133
    .end local v20    # "style":Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 123
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    instance-of v2, v2, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 124
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;

    .line 125
    .local v20, "style":Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 127
    .end local v20    # "style":Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    instance-of v2, v2, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_1

    .line 128
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    move-object/from16 v20, v0

    check-cast v20, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;

    .line 129
    .local v20, "style":Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avospush/notification/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
