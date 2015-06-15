.class public Lcom/kankunit/smartplugcronus/model/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_user"
.end annotation


# instance fields
.field private birthday:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private points:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->id:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->points:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->birthday:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->id:I

    .line 21
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->nickname:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPoints(Ljava/lang/String;)V
    .locals 0
    .param p1, "points"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->points:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->pwd:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->sex:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/UserModel;->userId:Ljava/lang/String;

    .line 27
    return-void
.end method
