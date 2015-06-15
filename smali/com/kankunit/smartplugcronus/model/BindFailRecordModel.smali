.class public Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;
.super Ljava/lang/Object;
.source "BindFailRecordModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_bind_fail_record"
.end annotation


# instance fields
.field public flag:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field public mac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->id:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->flag:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->id:I

    .line 19
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/BindFailRecordModel;->mac:Ljava/lang/String;

    .line 25
    return-void
.end method
