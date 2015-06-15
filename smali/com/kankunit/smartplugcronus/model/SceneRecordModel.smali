.class public Lcom/kankunit/smartplugcronus/model/SceneRecordModel;
.super Ljava/lang/Object;
.source "SceneRecordModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_scene_record"
.end annotation


# instance fields
.field private buttonEname:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field private controlId:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private pressTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonEname:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getButtonEname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonEname:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonId:I

    return v0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonName:Ljava/lang/String;

    return-object v0
.end method

.method public getControlId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->controlId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->id:I

    return v0
.end method

.method public getPressTime()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->pressTime:J

    return-wide v0
.end method

.method public setButtonEname(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonEname"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonEname:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setButtonId(I)V
    .locals 0
    .param p1, "buttonId"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonId:I

    .line 39
    return-void
.end method

.method public setButtonName(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->buttonName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setControlId(I)V
    .locals 0
    .param p1, "controlId"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->controlId:I

    .line 33
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->id:I

    .line 27
    return-void
.end method

.method public setPressTime(J)V
    .locals 0
    .param p1, "pressTime"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/model/SceneRecordModel;->pressTime:J

    .line 45
    return-void
.end method
