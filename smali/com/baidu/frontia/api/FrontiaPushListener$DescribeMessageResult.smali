.class public Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescribeMessageResult"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getMessage()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger()Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getTrigger()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;)V

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageResult;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
