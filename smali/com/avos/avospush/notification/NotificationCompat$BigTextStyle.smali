.class public Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
.super Lcom/avos/avospush/notification/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    .line 688
    invoke-virtual {p0, p1}, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V

    .line 689
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 715
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 697
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 706
    return-object p0
.end method
