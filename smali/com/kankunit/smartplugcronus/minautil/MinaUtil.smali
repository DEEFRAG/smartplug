.class public Lcom/kankunit/smartplugcronus/minautil/MinaUtil;
.super Ljava/lang/Object;
.source "MinaUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    .locals 3
    .param p0, "minaHandler"    # Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .line 16
    .local v0, "fMinaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    move-object v1, p1

    .line 17
    .local v1, "fMsg":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;

    invoke-direct {v2, v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$1;->start()V

    .line 45
    return-void
.end method

.method public static sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    .locals 3
    .param p0, "minaHandler"    # Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .line 48
    .local v0, "fMinaHandler":Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    move-object v1, p1

    .line 49
    .local v1, "fMsg":Ljava/lang/String;
    new-instance v2, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;

    invoke-direct {v2, v0, v1}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil$2;->start()V

    .line 70
    return-void
.end method
