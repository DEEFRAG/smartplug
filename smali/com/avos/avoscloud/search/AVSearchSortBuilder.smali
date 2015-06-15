.class public Lcom/avos/avoscloud/search/AVSearchSortBuilder;
.super Ljava/lang/Object;
.source "AVSearchSortBuilder.java"


# instance fields
.field private sortFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->sortFields:Ljava/util/List;

    return-void
.end method

.method private addField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "order"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "missing"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "field":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "order"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "mode"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "missing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->sortFields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->newBuilder()Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    .line 138
    .local v0, "builder":Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    const-string v2, "key1"

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    .line 139
    const-string v2, "key2"

    const-string v3, "sum"

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByAscending(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    .line 140
    const-string v2, "key3"

    const-string v3, "avg"

    const-string v4, "first"

    invoke-virtual {v0, v2, v3, v4}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByAscending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    .line 141
    const-string v2, "localtion"

    new-instance v3, Lcom/avos/avoscloud/AVGeoPoint;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/avos/avoscloud/AVGeoPoint;-><init>(DD)V

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    .line 142
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fuck:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->getSortFields()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->getSortFields()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "builder":Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    invoke-direct {v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSortFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "avg"

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByAscending(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "_last"

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByAscending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "missing"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "asc"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->addField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "avg"

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByDescending(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderByDescending(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "_last"

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->orderByDescending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public orderByDescending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "missing"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "desc"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->addField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 98
    const-string v0, "asc"

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v4, "avg"

    const-string v5, "km"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/search/AVSearchSortBuilder;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "order"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "unit"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, "field":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v1, "geoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string v3, "lat"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "lon"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "unit"

    invoke-interface {v2, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "mode"

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "order"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "_geo_distance"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lcom/avos/avoscloud/search/AVSearchSortBuilder;->sortFields:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object p0
.end method
