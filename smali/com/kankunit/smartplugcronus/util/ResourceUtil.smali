.class public Lcom/kankunit/smartplugcronus/util/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# instance fields
.field private cancel:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private ok:Ljava/lang/String;

.field private smartPlug:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCancel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->cancel:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getOk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->ok:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartPlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->smartPlug:Ljava/lang/String;

    return-object v0
.end method

.method public setCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancel"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->cancel:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->hint:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setOk(Ljava/lang/String;)V
    .locals 0
    .param p1, "ok"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->ok:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setSmartPlug(Ljava/lang/String;)V
    .locals 0
    .param p1, "smartPlug"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/ResourceUtil;->smartPlug:Ljava/lang/String;

    .line 33
    return-void
.end method
