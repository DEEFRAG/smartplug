.class public Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;
.super Ljava/lang/Object;
.source "RemoteControlCodeModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_remotecontrolcode_model"
.end annotation


# instance fields
.field private buttonEName:Ljava/lang/String;

.field private buttonId:I

.field private buttonName:Ljava/lang/String;

.field private codeNo:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private remoteControlId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonEName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->buttonEName:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->buttonId:I

    return v0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->buttonName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeNo()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->codeNo:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->id:I

    return v0
.end method

.method public getRemoteControlId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->remoteControlId:I

    return v0
.end method

.method public setButtonEName(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonEName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->buttonEName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setButtonId(I)V
    .locals 0
    .param p1, "buttonId"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->buttonId:I

    .line 67
    return-void
.end method

.method public setButtonName(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->buttonName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCodeNo(I)V
    .locals 0
    .param p1, "codeNo"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->codeNo:I

    .line 49
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->id:I

    .line 37
    return-void
.end method

.method public setRemoteControlId(I)V
    .locals 0
    .param p1, "remoteControlId"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/RemoteControlCodeModel;->remoteControlId:I

    .line 61
    return-void
.end method
