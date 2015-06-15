.class public Lcom/avos/avoscloud/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# static fields
.field public static final accTag:Ljava/lang/String; = "acc"

.field public static final attributesTag:Ljava/lang/String; = "attributes"

.field public static final eventTag:Ljava/lang/String; = "name"

.field public static final labelTag:Ljava/lang/String; = "tag"

.field public static final primaryKeyTag:Ljava/lang/String; = "primaryKey"


# instance fields
.field private accumulation:I

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private duration:Lcom/avos/avoscloud/AVDuration;

.field private eventName:Ljava/lang/String;

.field private labelName:Ljava/lang/String;

.field private primaryKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/avos/avoscloud/AVDuration;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVDuration;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->eventName:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->attributes:Ljava/util/Map;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->accumulation:I

    .line 31
    return-void
.end method


# virtual methods
.method public addAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected getAccumulation()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->accumulation:I

    return v0
.end method

.method protected getAttributes()Ljava/util/Map;
    .locals 1
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
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method protected getDuration()Lcom/avos/avoscloud/AVDuration;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLabelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->primaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public isMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->labelName:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/avos/avoscloud/AnalyticsUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->primaryKey:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/avos/avoscloud/AnalyticsUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVDuration;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public jsonMap()Ljava/util/Map;
    .locals 5
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
    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "name"

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->eventName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsEvent;->labelName:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    const-string v2, "tag"

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->labelName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsEvent;->primaryKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const-string v2, "primaryKey"

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->primaryKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    iget v2, p0, Lcom/avos/avoscloud/AnalyticsEvent;->accumulation:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 108
    const-string v2, "acc"

    iget v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->accumulation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AnalyticsEvent;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 112
    :try_start_0
    const-string v2, "attributes"

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->attributes:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_2
    :goto_1
    const-string v2, "du"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AnalyticsEvent;->myDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "ts"

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVDuration;->getCreateTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v1

    .line 102
    :cond_3
    const-string v2, "tag"

    iget-object v3, p0, Lcom/avos/avoscloud/AnalyticsEvent;->eventName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method myDuration()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAccumulation(I)V
    .locals 0
    .param p1, "acc"    # I

    .prologue
    .line 54
    if-lez p1, :cond_0

    .line 55
    iput p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->accumulation:I

    .line 57
    :cond_0
    return-void
.end method

.method protected setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->attributes:Ljava/util/Map;

    .line 137
    return-void
.end method

.method protected setDuration(Lcom/avos/avoscloud/AVDuration;)V
    .locals 0
    .param p1, "duration"    # Lcom/avos/avoscloud/AVDuration;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    .line 129
    return-void
.end method

.method public setDurationValue(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVDuration;->setDuration(J)V

    .line 51
    return-void
.end method

.method protected setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->eventName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->labelName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method protected setLabelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelName"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->labelName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPrimaryKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avos/avoscloud/AnalyticsEvent;->primaryKey:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->start()V

    .line 39
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avoscloud/AnalyticsEvent;->duration:Lcom/avos/avoscloud/AVDuration;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVDuration;->stop()V

    .line 43
    return-void
.end method
