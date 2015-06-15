.class public abstract Lcom/avos/avospush/session/CommandPacket;
.super Ljava/lang/Object;
.source "CommandPacket.java"


# static fields
.field public static final OPERATION_KEY:Ljava/lang/String; = "op"


# instance fields
.field private appId:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private installationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 3
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
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "cmd"

    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "appId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "installationId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->cmd:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "installationId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->installationId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
