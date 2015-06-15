.class public Lcom/kankunit/smartplugcronus/application/BaseApplication;
.super Lcom/baidu/frontia/FrontiaApplication;
.source "BaseApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/frontia/FrontiaApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/baidu/frontia/FrontiaApplication;->onCreate()V

    .line 22
    new-instance v0, Lcom/kankunit/smartplugcronus/application/BaseApplication$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/application/BaseApplication$1;-><init>(Lcom/kankunit/smartplugcronus/application/BaseApplication;)V

    .line 33
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/application/BaseApplication$1;->start()V

    .line 35
    return-void
.end method
