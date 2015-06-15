.class public Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    invoke-direct {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    return-void
.end method

.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    return-object v0
.end method

.method public getCrontab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;->getCrontab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCrontab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;->setCrontab(Ljava/lang/String;)V

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$Trigger;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$TriggerImpl;->setTime(Ljava/lang/String;)V

    return-void
.end method
