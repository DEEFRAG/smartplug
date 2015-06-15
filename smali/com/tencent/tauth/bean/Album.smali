.class public Lcom/tencent/tauth/bean/Album;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mAlbumid:Ljava/lang/String;

.field private mClassid:I

.field private mCreatetime:J

.field private mDesc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPicnum:J

.field private mPriv:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tencent/tauth/bean/Album;->mAlbumid:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/tencent/tauth/bean/Album;->mClassid:I

    .line 28
    iput-wide p3, p0, Lcom/tencent/tauth/bean/Album;->mCreatetime:J

    .line 29
    iput-object p5, p0, Lcom/tencent/tauth/bean/Album;->mDesc:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/tencent/tauth/bean/Album;->mName:Ljava/lang/String;

    .line 31
    iput-wide p7, p0, Lcom/tencent/tauth/bean/Album;->mPicnum:J

    .line 32
    iput p9, p0, Lcom/tencent/tauth/bean/Album;->mPriv:I

    .line 33
    return-void
.end method


# virtual methods
.method public getAlbumid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/tauth/bean/Album;->mAlbumid:Ljava/lang/String;

    return-object v0
.end method

.method public getClassid()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/tencent/tauth/bean/Album;->mClassid:I

    return v0
.end method

.method public getCreatetime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/tencent/tauth/bean/Album;->mCreatetime:J

    return-wide v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tauth/bean/Album;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tauth/bean/Album;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicnum()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/tencent/tauth/bean/Album;->mPicnum:J

    return-wide v0
.end method

.method public getPriv()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/tencent/tauth/bean/Album;->mPriv:I

    return v0
.end method

.method public setAlbumid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/tauth/bean/Album;->mAlbumid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setClassid(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/tencent/tauth/bean/Album;->mClassid:I

    .line 52
    return-void
.end method

.method public setCreatetime(J)V
    .locals 0

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/tencent/tauth/bean/Album;->mCreatetime:J

    .line 63
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/tauth/bean/Album;->mDesc:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/tauth/bean/Album;->mName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPicnum(J)V
    .locals 0

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/tencent/tauth/bean/Album;->mPicnum:J

    .line 96
    return-void
.end method

.method public setPriv(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/tencent/tauth/bean/Album;->mPriv:I

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/Album;->mAlbumid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nclassid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tauth/bean/Album;->mClassid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncreatetime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/tauth/bean/Album;->mCreatetime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndesc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/Album;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/Album;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npicnum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/tauth/bean/Album;->mPicnum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npriv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tauth/bean/Album;->mPriv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
