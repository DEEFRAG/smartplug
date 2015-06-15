.class public Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationContent"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-direct {v0, p1, p2}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    return-object v0
.end method

.method public addAndroidContent(Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->addAndroidContent(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;)V

    return-void
.end method

.method public addCustomContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->addCustomContent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addIOSContent(Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->addIOSContent(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;)V

    return-void
.end method

.method public getAndroidContent()Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->getAndroidContent()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;)V

    return-object v0
.end method

.method public getCustomContent()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->getCustomContent()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIOSContent()Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->getIOSContent()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$NotificationContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$NotificationContentImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
