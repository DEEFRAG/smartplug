.class public abstract Lcom/avos/avospush/notification/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 589
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 577
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .line 578
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setStyle(Lcom/avos/avospush/notification/NotificationCompat$Style;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .line 582
    :cond_0
    return-void
.end method
