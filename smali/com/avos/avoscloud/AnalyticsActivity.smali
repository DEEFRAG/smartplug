.class public Lcom/avos/avoscloud/AnalyticsActivity;
.super Ljava/lang/Object;
.source "AnalyticsActivity.java"


# instance fields
.field private activityName:Ljava/lang/String;

.field private duration:Lcom/avos/avoscloud/AVDuration;

.field isFragment:Z

.field volatile savedToServer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsActivity;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/avos/avoscloud/AVDuration;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVDuration;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    .line 15
    iput-boolean v1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->isFragment:Z

    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->activityName:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->savedToServer:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method protected getDuration()Lcom/avos/avoscloud/AVDuration;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    return-object v0
.end method

.method public getStart()D
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->getCreateTimeStamp()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method protected isFragment()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->isFragment:Z

    return v0
.end method

.method protected isSavedToServer()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->savedToServer:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->isStopped()Z

    move-result v0

    return v0
.end method

.method public jsonMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsActivity;->activityName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "du"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsActivity;->myDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "ts"

    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVDuration;->getCreateTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method myDuration()J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->activityName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected setDuration(Lcom/avos/avoscloud/AVDuration;)V
    .locals 0
    .param p1, "duration"    # Lcom/avos/avoscloud/AVDuration;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    .line 71
    return-void
.end method

.method public setDurationValue(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVDuration;->setDuration(J)V

    .line 38
    return-void
.end method

.method protected setFragment(Z)V
    .locals 0
    .param p1, "isFragment"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->isFragment:Z

    .line 91
    return-void
.end method

.method protected setSavedToServer(Z)V
    .locals 0
    .param p1, "savedToServer"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/avos/avoscloud/AnalyticsActivity;->savedToServer:Z

    .line 83
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->start()V

    .line 30
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsActivity;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->stop()V

    .line 34
    return-void
.end method
