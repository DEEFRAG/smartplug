.class public Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidContent"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-direct {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    return-void
.end method

.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    return-object v0
.end method

.method public getBuilderId()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->getBuilderId()I

    move-result v0

    return v0
.end method

.method public getNotificationStyle()Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;
    .locals 2

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;

    iget-object v1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->getNotificationStyle()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;-><init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;)V

    return-object v0
.end method

.method public getPKGContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->getPKGContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBuilderId(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->setBuilderId(I)V

    return-void
.end method

.method public setNotificationStyle(Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {p1}, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->setNotificationStyle(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;)V

    return-void
.end method

.method public setPKGContent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->setPKGContent(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$AndroidContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$AndroidContentImpl;->setUrl(Ljava/lang/String;)V

    return-void
.end method
