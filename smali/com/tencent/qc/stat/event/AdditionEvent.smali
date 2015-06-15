.class public Lcom/tencent/qc/stat/event/AdditionEvent;
.super Lcom/tencent/qc/stat/event/Event;
.source "ProGuard"


# instance fields
.field a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/qc/stat/event/Event;-><init>(Landroid/content/Context;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qc/stat/event/AdditionEvent;->a:Ljava/util/Map;

    .line 23
    iput-object p3, p0, Lcom/tencent/qc/stat/event/AdditionEvent;->a:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/qc/stat/event/EventType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/qc/stat/event/EventType;->e:Lcom/tencent/qc/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    .line 33
    const-string v0, "qq"

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/tencent/qc/stat/event/AdditionEvent;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qc/stat/event/AdditionEvent;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tencent/qc/stat/event/AdditionEvent;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
