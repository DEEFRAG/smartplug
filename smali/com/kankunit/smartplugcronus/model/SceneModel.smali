.class public Lcom/kankunit/smartplugcronus/model/SceneModel;
.super Ljava/lang/Object;
.source "SceneModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_scene"
.end annotation


# instance fields
.field private addtime:J

.field private count:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private orderNo:I

.field private sceneImage:I

.field private sceneName:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->count:I

    .line 12
    return-void
.end method


# virtual methods
.method public getAddtime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->addtime:J

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->id:I

    return v0
.end method

.method public getOrderNo()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->orderNo:I

    return v0
.end method

.method public getSceneImage()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->sceneImage:I

    return v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->sceneName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->status:I

    return v0
.end method

.method public setAddtime(J)V
    .locals 0
    .param p1, "addtime"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->addtime:J

    .line 55
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->count:I

    .line 67
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->id:I

    .line 31
    return-void
.end method

.method public setOrderNo(I)V
    .locals 0
    .param p1, "orderNo"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->orderNo:I

    .line 61
    return-void
.end method

.method public setSceneImage(I)V
    .locals 0
    .param p1, "sceneImage"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->sceneImage:I

    .line 43
    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->sceneName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneModel;->status:I

    .line 49
    return-void
.end method
