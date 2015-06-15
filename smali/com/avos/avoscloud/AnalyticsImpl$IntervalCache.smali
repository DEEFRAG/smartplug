.class Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;
.super Ljava/lang/Object;
.source "AnalyticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AnalyticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntervalCache"
.end annotation


# instance fields
.field private final sendIntervalInMobile:J

.field private final sendIntervalInWifi:J

.field timeSlip:J

.field wifiConnection:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->sendIntervalInWifi:J

    .line 676
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->sendIntervalInMobile:J

    return-void
.end method


# virtual methods
.method public getTimeInterval()J
    .locals 11

    .prologue
    const-wide/16 v4, 0x3a98

    const/4 v10, 0x1

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x3a980

    div-long v1, v6, v8

    .line 680
    .local v1, "currentSlip":J
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 681
    const-string v6, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v6}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 696
    :cond_0
    :goto_0
    return-wide v4

    .line 684
    :cond_1
    iget-wide v6, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->timeSlip:J

    cmp-long v6, v1, v6

    if-lez v6, :cond_2

    .line 685
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 688
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 689
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 690
    iput-boolean v10, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->wifiConnection:Z

    .line 694
    :goto_1
    iput-wide v1, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->timeSlip:J

    .line 696
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_2
    iget-boolean v6, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->wifiConnection:Z

    if-nez v6, :cond_0

    const-wide/32 v4, 0xea60

    goto :goto_0

    .line 692
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/avos/avoscloud/AnalyticsImpl$IntervalCache;->wifiConnection:Z

    goto :goto_1
.end method
