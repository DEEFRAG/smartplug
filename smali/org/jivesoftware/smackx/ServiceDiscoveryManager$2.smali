.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 3

    .prologue
    .line 243
    # getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;
    invoke-static {}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$100()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 244
    :try_start_0
    # getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;
    invoke-static {}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    # getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$200(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
