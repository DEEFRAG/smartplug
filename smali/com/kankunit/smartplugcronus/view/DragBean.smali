.class public Lcom/kankunit/smartplugcronus/view/DragBean;
.super Ljava/lang/Object;
.source "DragBean.java"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/DragBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DragBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/DragBean;->id:I

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DragBean;->name:Ljava/lang/String;

    .line 15
    return-void
.end method
