.class public Lcom/kankunit/smartplugcronus/model/MessageModel;
.super Ljava/lang/Object;
.source "MessageModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_message_model"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private msgContent:Ljava/lang/String;

.field private msgDate:Ljava/lang/String;

.field private msgType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->id:I

    return v0
.end method

.method public getMsgContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->msgDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->id:I

    .line 18
    return-void
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->msgContent:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMsgDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgDate"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->msgDate:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgType"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/MessageModel;->msgType:Ljava/lang/String;

    .line 24
    return-void
.end method
