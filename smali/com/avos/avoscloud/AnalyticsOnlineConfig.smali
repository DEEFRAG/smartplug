.class public Lcom/avos/avoscloud/AnalyticsOnlineConfig;
.super Ljava/lang/Object;
.source "AnalyticsOnlineConfig.java"


# instance fields
.field protected config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enableStats:Z

.field private final parent:Lcom/avos/avoscloud/AnalyticsImpl;

.field private reportPolicy:Lcom/avos/avoscloud/ReportPolicy;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AnalyticsImpl;)V
    .locals 1
    .param p1, "ref"    # Lcom/avos/avoscloud/AnalyticsImpl;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/avos/avoscloud/ReportPolicy;->SEND_INTERVAL:Lcom/avos/avoscloud/ReportPolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->config:Ljava/util/Map;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->enableStats:Z

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->parent:Lcom/avos/avoscloud/AnalyticsImpl;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/AnalyticsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->parent:Lcom/avos/avoscloud/AnalyticsImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/AnalyticsOnlineConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsOnlineConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->enableStats:Z

    return p1
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AnalyticsOnlineConfig;)Lcom/avos/avoscloud/ReportPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsOnlineConfig;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;

    return-object v0
.end method

.method static synthetic access$202(Lcom/avos/avoscloud/AnalyticsOnlineConfig;Lcom/avos/avoscloud/ReportPolicy;)Lcom/avos/avoscloud/ReportPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AnalyticsOnlineConfig;
    .param p1, "x1"    # Lcom/avos/avoscloud/ReportPolicy;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;

    return-object p1
.end method


# virtual methods
.method public getConfigParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->config:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 106
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportPolicy()Lcom/avos/avoscloud/ReportPolicy;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;

    return-object v0
.end method

.method public isEnableStats()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->enableStats:Z

    return v0
.end method

.method public setEnableStats(Z)V
    .locals 0
    .param p1, "enableStats"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->enableStats:Z

    .line 91
    return-void
.end method

.method public setReportPolicy(Lcom/avos/avoscloud/ReportPolicy;)V
    .locals 0
    .param p1, "p"    # Lcom/avos/avoscloud/ReportPolicy;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->reportPolicy:Lcom/avos/avoscloud/ReportPolicy;

    .line 95
    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AnalyticsOnlineConfig;->update(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method

.method public update(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updatePolicy"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    const-string v0, "statistics/apps/%s/sendPolicy"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->statistisInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v5, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/avos/avoscloud/AnalyticsOnlineConfig$1;-><init>(Lcom/avos/avoscloud/AnalyticsOnlineConfig;ZLandroid/content/Context;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 83
    return-void
.end method
