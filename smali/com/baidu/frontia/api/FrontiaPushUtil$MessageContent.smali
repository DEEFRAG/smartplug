.class public Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContent"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

.field private b:I


# direct methods
.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;->DEVELOPE:Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->b:I

    :goto_0
    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    iget v1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->b:I

    invoke-direct {v0, p1, v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->b:I

    goto :goto_0
.end method

.method public static createNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->createNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v0

    new-instance v1, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;

    invoke-direct {v1, v0}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;)V

    return-object v1
.end method

.method public static createStringMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->createStringMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v0

    new-instance v1, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;

    invoke-direct {v1, v0}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;)V

    return-object v1
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    return-object v0
.end method

.method public getDeployStatus()Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->getDeployStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;->DEVELOPE:Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;->PRODUCTION:Lcom/baidu/frontia/api/FrontiaPushUtil$DeployStatus;

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->getMesssage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageKeys()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->getMessageKeys()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->getNotificationContent()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;)V

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setNotification(Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;->setNotification(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;)V

    return-void
.end method
