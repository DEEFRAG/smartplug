.class public Lcom/kankunit/smartplugcronus/customview/ParamButton;
.super Landroid/widget/Button;
.source "ParamButton.java"


# instance fields
.field public btnId:I

.field public objParam:Ljava/lang/Object;

.field public paramBool:Z

.field public paramInt:I

.field public paramStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 11
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->btnId:I

    .line 12
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramBool:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->btnId:I

    .line 12
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramBool:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->btnId:I

    .line 12
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramBool:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getBtnId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->btnId:I

    return v0
.end method

.method public getObjParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->objParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getParamInt()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    return v0
.end method

.method public getParamStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramStr:Ljava/lang/String;

    return-object v0
.end method

.method public isParamBool()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramBool:Z

    return v0
.end method

.method public setBtnId(I)V
    .locals 0
    .param p1, "btnId"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->btnId:I

    .line 64
    return-void
.end method

.method public setObjParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "objParam"    # Ljava/lang/Object;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->objParam:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public setParamBool(Z)V
    .locals 0
    .param p1, "paramBool"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramBool:Z

    .line 56
    return-void
.end method

.method public setParamInt(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    .line 48
    return-void
.end method

.method public setParamStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramStr"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramStr:Ljava/lang/String;

    .line 32
    return-void
.end method
