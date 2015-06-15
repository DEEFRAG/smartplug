.class public Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOSContent"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-direct {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    return-void
.end method

.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    return-object v0
.end method

.method public getAlertMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;->getAlertMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadge()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;->getBadge()I

    move-result v0

    return v0
.end method

.method public getSoundFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;->getSoundFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlertMsg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;->setAlertMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setBadge(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;->setBadge(I)V

    return-void
.end method

.method public setSoundFile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$IOSContent;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$IOSContentImpl;->setSoundFile(Ljava/lang/String;)V

    return-void
.end method
