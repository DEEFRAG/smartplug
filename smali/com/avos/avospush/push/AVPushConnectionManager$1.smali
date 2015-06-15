.class Lcom/avos/avospush/push/AVPushConnectionManager$1;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Lcom/avos/avospush/push/AVPushRouterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/push/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushConnectionManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager$1;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "installationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushConnectionManager$1;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    const-string v0, "server"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/avos/avospush/push/AVPushConnectionManager;->createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p2, p3, v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$000(Lcom/avos/avospush/push/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
