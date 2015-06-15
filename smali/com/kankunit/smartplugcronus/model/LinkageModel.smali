.class public Lcom/kankunit/smartplugcronus/model/LinkageModel;
.super Ljava/lang/Object;
.source "LinkageModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_linkage"
.end annotation


# instance fields
.field private addtime:Ljava/lang/String;

.field private hasBody:Ljava/lang/String;

.field private hasHum:Ljava/lang/String;

.field private hasLum:Ljava/lang/String;

.field private hasTemp:Ljava/lang/String;

.field private hasTimer:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private isDo:Ljava/lang/String;

.field private linkageNum:Ljava/lang/String;

.field private needPush:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->addtime:Ljava/lang/String;

    return-object v0
.end method

.method public getHasBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasBody:Ljava/lang/String;

    return-object v0
.end method

.method public getHasHum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasHum:Ljava/lang/String;

    return-object v0
.end method

.method public getHasLum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasLum:Ljava/lang/String;

    return-object v0
.end method

.method public getHasTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getHasTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasTimer:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->id:I

    return v0
.end method

.method public getIsDo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->isDo:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkageNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->linkageNum:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedPush()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->needPush:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "addtime"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->addtime:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setHasBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasBody"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasBody:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setHasHum(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasHum"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasHum:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setHasLum(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasLum"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasLum:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setHasTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasTemp"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasTemp:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setHasTimer(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasTimer"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->hasTimer:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->id:I

    .line 68
    return-void
.end method

.method public setIsDo(Ljava/lang/String;)V
    .locals 0
    .param p1, "isDo"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->isDo:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setLinkageNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkageNum"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->linkageNum:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setNeedPush(Ljava/lang/String;)V
    .locals 0
    .param p1, "needPush"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->needPush:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageModel;->sceneId:Ljava/lang/String;

    .line 80
    return-void
.end method
