.class public Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
.super Ljava/lang/Object;
.source "UpdateAppModel.java"


# instance fields
.field private downUrl:Ljava/lang/String;

.field private hasNewFound:Ljava/lang/String;

.field private isShow:Ljava/lang/String;

.field private verCode:Ljava/lang/String;

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHasNewFound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->hasNewFound:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->isShow:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->verCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->downUrl:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setHasNewFound(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasNewFound"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->hasNewFound:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setIsShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "isShow"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->isShow:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setVerCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "verCode"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->verCode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "verName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->verName:Ljava/lang/String;

    .line 40
    return-void
.end method
