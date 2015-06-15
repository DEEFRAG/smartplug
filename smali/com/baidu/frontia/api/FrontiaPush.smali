.class public Lcom/baidu/frontia/api/FrontiaPush;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/frontia/framework/IModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/frontia/api/FrontiaPush$a;,
        Lcom/baidu/frontia/api/FrontiaPush$b;,
        Lcom/baidu/frontia/api/FrontiaPush$c;,
        Lcom/baidu/frontia/api/FrontiaPush$d;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/frontia/api/FrontiaPush;


# instance fields
.field private b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/frontia/api/FrontiaPush;->a:Lcom/baidu/frontia/api/FrontiaPush;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-direct {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/baidu/frontia/api/FrontiaPush;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/frontia/api/FrontiaPush;->a:Lcom/baidu/frontia/api/FrontiaPush;

    if-nez v0, :cond_2

    const-class v1, Lcom/baidu/frontia/api/FrontiaPush;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/frontia/api/FrontiaPush;->a:Lcom/baidu/frontia/api/FrontiaPush;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/api/FrontiaPush;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/frontia/api/FrontiaPush;->a:Lcom/baidu/frontia/api/FrontiaPush;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/baidu/frontia/api/FrontiaPush;->a:Lcom/baidu/frontia/api/FrontiaPush;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    return-object v0
.end method

.method public deleteTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->deleteTags(Ljava/util/List;)V

    return-void
.end method

.method public describeMessage(Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;)V
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$b;

    invoke-direct {v0, p0, p2}, Lcom/baidu/frontia/api/FrontiaPush$b;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$b;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->describeMessage(Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;)V

    return-void
.end method

.method public disableLbs()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->disableLbs()V

    return-void
.end method

.method public enableLbs()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->enableLbs()V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->init(Ljava/lang/String;)V

    return-void
.end method

.method public isPushWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/internal/PushManager;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public listMessage(Lcom/baidu/frontia/FrontiaQuery;Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;)V
    .locals 3

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$c;

    invoke-direct {v0, p0, p2}, Lcom/baidu/frontia/api/FrontiaPush$c;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/FrontiaQuery;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$c;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->listMessage(Lorg/json/JSONObject;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;)V

    return-void
.end method

.method public listTags()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->listTags()V

    return-void
.end method

.method public pushMessage(Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 3

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$d;

    invoke-direct {v0, p0, p2}, Lcom/baidu/frontia/api/FrontiaPush$d;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$d;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->pushMessage(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    return-void
.end method

.method public pushMessage(Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 4

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$d;

    invoke-direct {v0, p0, p3}, Lcom/baidu/frontia/api/FrontiaPush$d;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$d;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->pushMessage(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    return-void
.end method

.method public pushMessage(Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 3

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$d;

    invoke-direct {v0, p0, p3}, Lcom/baidu/frontia/api/FrontiaPush$d;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p2}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$d;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->pushMessage(Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    return-void
.end method

.method public pushMessage(Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 4

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$d;

    invoke-direct {v0, p0, p4}, Lcom/baidu/frontia/api/FrontiaPush$d;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p2}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v2

    invoke-virtual {p3}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$d;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->pushMessage(Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    return-void
.end method

.method public pushMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 3

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$d;

    invoke-direct {v0, p0, p4}, Lcom/baidu/frontia/api/FrontiaPush$d;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p3}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$d;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->pushMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    return-void
.end method

.method public pushMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 6

    new-instance v1, Lcom/baidu/frontia/api/FrontiaPush$d;

    invoke-direct {v1, p0, p5}, Lcom/baidu/frontia/api/FrontiaPush$d;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p3}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/frontia/api/FrontiaPush$d;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->pushMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;)V

    return-void
.end method

.method public removeMessage(Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-direct {v0, p0, p2}, Lcom/baidu/frontia/api/FrontiaPush$a;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$a;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->removeMessage(Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;)V

    return-void
.end method

.method public replaceMessage(Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V
    .locals 4

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-direct {v0, p0, p4}, Lcom/baidu/frontia/api/FrontiaPush$a;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p2}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v2

    invoke-virtual {p3}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/frontia/api/FrontiaPush$a;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->replaceMessage(Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;)V

    return-void
.end method

.method public replaceMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V
    .locals 6

    new-instance v1, Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-direct {v1, p0, p5}, Lcom/baidu/frontia/api/FrontiaPush$a;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p3}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v3

    invoke-virtual {p4}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/frontia/api/FrontiaPush$a;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->replaceMessage(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;)V

    return-void
.end method

.method public replaceMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V
    .locals 7

    new-instance v1, Lcom/baidu/frontia/api/FrontiaPush$a;

    invoke-direct {v1, p0, p6}, Lcom/baidu/frontia/api/FrontiaPush$a;-><init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {p4}, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    move-result-object v4

    invoke-virtual {p5}, Lcom/baidu/frontia/api/FrontiaPushUtil$MessageContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/frontia/api/FrontiaPush$a;->a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->replaceMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$MessageContentImpl;Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/internal/PushManager;->resumeWork(Landroid/content/Context;)V

    return-void
.end method

.method public setDebugModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/internal/PushSettings;->enableDebugMode(Landroid/content/Context;Z)V

    return-void
.end method

.method public setNotificationBuilder(ILcom/baidu/frontia/api/FrontiaPushUtil$a;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/baidu/frontia/api/FrontiaPushUtil$a;->a()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/baidu/android/pushservice/internal/PushManager;->setNotificationBuilder(Landroid/content/Context;ILcom/baidu/android/pushservice/internal/PushNotificationBuilder;)V

    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->setTags(Ljava/util/List;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->start()V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->b:Lcom/baidu/frontia/module/push/FrontiaPushImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushImpl;->start(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 7

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/internal/PushManager;->stopWork(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush;->c:Landroid/content/Context;

    const-string v1, "010702"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/baidu/frontia/base/stat/StatUtils;->insertBehavior(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
