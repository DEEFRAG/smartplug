.class public Lcom/kankunit/smartplugcronus/model/SpeechModel;
.super Ljava/lang/Object;
.source "SpeechModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_speech"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private relationId:Ljava/lang/String;

.field private speechName:Ljava/lang/String;

.field private speechType:Ljava/lang/String;


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
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->id:I

    return v0
.end method

.method public getRelationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->relationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->speechName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->speechType:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->id:I

    .line 18
    return-void
.end method

.method public setRelationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "relationId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->relationId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSpeechName(Ljava/lang/String;)V
    .locals 0
    .param p1, "speechName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->speechName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSpeechType(Ljava/lang/String;)V
    .locals 0
    .param p1, "speechType"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/SpeechModel;->speechType:Ljava/lang/String;

    .line 30
    return-void
.end method
