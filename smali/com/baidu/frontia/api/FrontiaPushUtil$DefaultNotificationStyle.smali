.class public Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultNotificationStyle"
.end annotation


# instance fields
.field private a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-direct {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    return-void
.end method

.method constructor <init>(Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    return-object v0
.end method

.method public disableAlert()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->disableAlert()V

    return-void
.end method

.method public disableDismissible()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->disableDismissible()V

    return-void
.end method

.method public disableVibration()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->disableVibration()V

    return-void
.end method

.method public enableAlert()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->enableAlert()V

    return-void
.end method

.method public enableDismissible()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->enableDismissible()V

    return-void
.end method

.method public enableVibration()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->enableVibration()V

    return-void
.end method

.method public isAlertEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->isAlertEnabled()Z

    move-result v0

    return v0
.end method

.method public isDismissible()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->isDismissible()Z

    move-result v0

    return v0
.end method

.method public isVibrationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPushUtil$DefaultNotificationStyle;->a:Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/push/FrontiaPushUtilImpl$DefaultNotificationStyleImpl;->isVibrationEnabled()Z

    move-result v0

    return v0
.end method
