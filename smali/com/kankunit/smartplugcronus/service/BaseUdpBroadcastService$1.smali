.class Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$1;
.super Ljava/lang/Object;
.source "BaseUdpBroadcastService.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 77
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bind receive========"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "body":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "arr":[Ljava/lang/String;
    :try_start_0
    const-string v3, "sub"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and flag=\'sub\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v3, "main"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$1;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    # getter for: Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;->access$0(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and flag=\'main\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
