.class public Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;
.super Lcom/avos/avospush/notification/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field mBigLargeIcon:Landroid/graphics/Bitmap;

.field mBigLargeIconSet:Z

.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    .line 621
    invoke-virtual {p0, p1}, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V

    .line 622
    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    .line 656
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 647
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 630
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 639
    return-object p0
.end method
