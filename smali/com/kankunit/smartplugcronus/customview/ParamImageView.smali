.class public Lcom/kankunit/smartplugcronus/customview/ParamImageView;
.super Landroid/widget/ImageView;
.source "ParamImageView.java"


# instance fields
.field private paramBool:Z

.field private paramInt:I

.field private paramStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getParamInt()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamImageView;->paramInt:I

    return v0
.end method

.method public getParamStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamImageView;->paramStr:Ljava/lang/String;

    return-object v0
.end method

.method public isParamBool()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/ParamImageView;->paramBool:Z

    return v0
.end method

.method public setParamBool(Z)V
    .locals 0
    .param p1, "paramBool"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamImageView;->paramBool:Z

    .line 37
    return-void
.end method

.method public setParamInt(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamImageView;->paramInt:I

    .line 31
    return-void
.end method

.method public setParamStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramStr"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/ParamImageView;->paramStr:Ljava/lang/String;

    .line 25
    return-void
.end method
