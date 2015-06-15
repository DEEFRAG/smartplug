.class public Lcom/avos/avoscloud/AnalyticsSession;
.super Ljava/lang/Object;
.source "AnalyticsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sessionIdTag:Ljava/lang/String; = "sessionId"


# instance fields
.field private activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AnalyticsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private duration:Lcom/avos/avoscloud/AVDuration;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/avos/avoscloud/AnalyticsSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AnalyticsSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/avos/avoscloud/AVDuration;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVDuration;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    .line 27
    return-void
.end method

.method private maxSessionDuration()J
    .locals 2

    .prologue
    .line 180
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method private myDuration(JJ)J
    .locals 4
    .param p1, "max"    # J
    .param p3, "sum"    # J

    .prologue
    .line 167
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVDuration;->getDuration()J

    move-result-wide v0

    .line 168
    .local v0, "value":J
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    .line 170
    move-wide v0, p3

    .line 172
    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 173
    move-wide v0, p1

    .line 175
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public activitiesMap(Z)Ljava/util/Map;
    .locals 9
    .param p1, "cleanUpAnalysisData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 190
    .local v3, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-wide/16 v1, 0x0

    .line 191
    .local v1, "activitiesDuration":J
    iget-object v6, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AnalyticsActivity;

    .line 192
    .local v0, "a":Lcom/avos/avoscloud/AnalyticsActivity;
    monitor-enter v0

    .line 193
    :try_start_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->isSavedToServer()Z

    move-result v6

    if-nez v6, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->jsonMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    if-eqz p1, :cond_1

    .line 196
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/AnalyticsActivity;->setSavedToServer(Z)V

    .line 199
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-boolean v6, v0, Lcom/avos/avoscloud/AnalyticsActivity;->isFragment:Z

    if-nez v6, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->myDuration()J

    move-result-wide v6

    add-long/2addr v1, v6

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 205
    .end local v0    # "a":Lcom/avos/avoscloud/AnalyticsActivity;
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "activities"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v6, "sessionId"

    iget-object v7, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v6, "duration"

    invoke-direct {p0}, Lcom/avos/avoscloud/AnalyticsSession;->maxSessionDuration()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v1, v2}, Lcom/avos/avoscloud/AnalyticsSession;->myDuration(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-object v5
.end method

.method public activityByName(Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsActivity;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .prologue
    .line 72
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AnalyticsActivity;

    .line 73
    .local v0, "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->isStopped()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    :cond_1
    :goto_0
    return-object v0

    .line 78
    .end local v0    # "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    :cond_2
    const/4 v0, 0x0

    .line 79
    .restart local v0    # "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    if-eqz p2, :cond_1

    .line 80
    new-instance v0, Lcom/avos/avoscloud/AnalyticsActivity;

    .end local v0    # "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AnalyticsActivity;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v0    # "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addActivity(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ms"    # J

    .prologue
    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AnalyticsSession;->activityByName(Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsActivity;

    move-result-object v0

    .line 105
    .local v0, "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AnalyticsActivity;->setDurationValue(J)V

    .line 106
    return-void
.end method

.method public beginActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AnalyticsSession;->activityByName(Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsActivity;

    move-result-object v0

    .line 110
    .local v0, "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->start()V

    .line 111
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVDuration;->resume()V

    .line 112
    return-void
.end method

.method public beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/avos/avoscloud/AnalyticsSession;->eventByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 123
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AnalyticsEvent;->setLabel(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsEvent;->start()V

    .line 127
    return-object v0
.end method

.method public beginFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AnalyticsSession;->activityByName(Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsActivity;

    move-result-object v0

    .line 116
    .local v0, "fragment":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AnalyticsActivity;->setFragment(Z)V

    .line 117
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->start()V

    .line 118
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVDuration;->resume()V

    .line 119
    return-void
.end method

.method public beginSession()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsUtils;->uniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->start()V

    .line 32
    return-void
.end method

.method public endActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AnalyticsSession;->activityByName(Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsActivity;

    move-result-object v0

    .line 140
    .local v0, "activity":Lcom/avos/avoscloud/AnalyticsActivity;
    if-nez v0, :cond_0

    .line 142
    const-string v1, ""

    const-string v2, "Please call begin activity before using endActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->stop()V

    goto :goto_0
.end method

.method public endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/avos/avoscloud/AnalyticsSession;->eventByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 132
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsEvent;->stop()V

    goto :goto_0
.end method

.method public endFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AnalyticsSession;->activityByName(Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsActivity;

    move-result-object v0

    .line 150
    .local v0, "fragment":Lcom/avos/avoscloud/AnalyticsActivity;
    if-nez v0, :cond_0

    .line 152
    const-string v1, ""

    const-string v2, "Please call begin Fragment before using endFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->stop()V

    goto :goto_0
.end method

.method public endSession()V
    .locals 4

    .prologue
    .line 35
    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsSession;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AnalyticsActivity;

    .line 39
    .local v0, "a":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->isStopped()Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->stop()V

    goto :goto_1

    .line 43
    .end local v0    # "a":Lcom/avos/avoscloud/AnalyticsActivity;
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsSession;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AnalyticsEvent;

    .line 44
    .local v1, "e":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsEvent;->getDuration()Lcom/avos/avoscloud/AVDuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVDuration;->isStopped()Z

    move-result v3

    if-nez v3, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsEvent;->stop()V

    goto :goto_2

    .line 48
    .end local v1    # "e":Lcom/avos/avoscloud/AnalyticsEvent;
    :cond_4
    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVDuration;->stop()V

    goto :goto_0
.end method

.method public eventArray(Z)Ljava/util/List;
    .locals 5
    .param p1, "cleanUpAnalysisData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 214
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 215
    .local v3, "toDelete":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AnalyticsEvent;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AnalyticsEvent;

    .line 216
    .local v1, "e":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsEvent;->getDuration()Lcom/avos/avoscloud/AVDuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVDuration;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsEvent;->jsonMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v1    # "e":Lcom/avos/avoscloud/AnalyticsEvent;
    :cond_1
    if-eqz p1, :cond_2

    .line 222
    iget-object v4, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 224
    :cond_2
    return-object v0
.end method

.method public eventByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/avos/avoscloud/AnalyticsEvent;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "create"    # Z

    .prologue
    .line 87
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AnalyticsEvent;

    .line 88
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/AnalyticsEvent;->isMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    :cond_1
    :goto_0
    return-object v0

    .line 93
    .end local v0    # "event":Lcom/avos/avoscloud/AnalyticsEvent;
    :cond_2
    const/4 v0, 0x0

    .line 94
    .restart local v0    # "event":Lcom/avos/avoscloud/AnalyticsEvent;
    if-eqz p4, :cond_1

    .line 95
    new-instance v0, Lcom/avos/avoscloud/AnalyticsEvent;

    .end local v0    # "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v0    # "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AnalyticsEvent;->setLabel(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AnalyticsEvent;->setPrimaryKey(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected firstBootMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "customInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v1, "events":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "launch"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsSession;->launchMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p1}, Lcom/avos/avoscloud/AnalyticsUtils;->deviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 269
    .local v0, "devInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "device"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz p2, :cond_0

    .line 271
    const-string v3, "customInfo"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    return-object v2
.end method

.method protected getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AnalyticsActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    return-object v0
.end method

.method protected getDuration()Lcom/avos/avoscloud/AVDuration;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    return-object v0
.end method

.method protected getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStart()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->getCreateTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method protected hasNewData()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 228
    iget-object v4, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AnalyticsActivity;

    .line 229
    .local v0, "a":Lcom/avos/avoscloud/AnalyticsActivity;
    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsActivity;->isSavedToServer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 238
    .end local v0    # "a":Lcom/avos/avoscloud/AnalyticsActivity;
    :goto_0
    return v3

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AnalyticsEvent;

    .line 234
    .local v1, "e":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsEvent;->getDuration()Lcom/avos/avoscloud/AVDuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVDuration;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 238
    .end local v1    # "e":Lcom/avos/avoscloud/AnalyticsEvent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSessionFinished()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->isStopped()Z

    move-result v0

    return v0
.end method

.method public jsonMap(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "cleanUpAnalysisData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "customInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsSession;->hasNewData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v1, "events":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "launch"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsSession;->launchMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v3, "terminate"

    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AnalyticsSession;->activitiesMap(Z)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "event"

    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AnalyticsSession;->eventArray(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v3, "events"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Lcom/avos/avoscloud/AnalyticsUtils;->deviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 252
    .local v0, "devInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "device"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    if-eqz p2, :cond_0

    .line 254
    const-string v3, "customInfo"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v0    # "devInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "events":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public launchMap()Ljava/util/Map;
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
    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "date"

    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVDuration;->getCreateTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-object v0
.end method

.method public pauseSession()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->pause()V

    .line 57
    return-void
.end method

.method protected setActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AnalyticsActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AnalyticsActivity;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsSession;->activities:Ljava/util/List;

    .line 286
    return-void
.end method

.method protected setDuration(Lcom/avos/avoscloud/AVDuration;)V
    .locals 0
    .param p1, "duration"    # Lcom/avos/avoscloud/AVDuration;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    .line 302
    return-void
.end method

.method protected setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AnalyticsEvent;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsSession;->events:Ljava/util/List;

    .line 294
    return-void
.end method

.method public setSessionDuration(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsSession;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVDuration;->setDuration(J)V

    .line 69
    return-void
.end method

.method protected setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsSession;->sessionId:Ljava/lang/String;

    .line 306
    return-void
.end method
