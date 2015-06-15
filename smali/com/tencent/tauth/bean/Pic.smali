.class public Lcom/tencent/tauth/bean/Pic;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mAlbumId:Ljava/lang/String;

.field private mHeight:I

.field private mLloc:Ljava/lang/String;

.field private mSloc:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tencent/tauth/bean/Pic;->mAlbumId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tencent/tauth/bean/Pic;->mLloc:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/tencent/tauth/bean/Pic;->mSloc:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/tencent/tauth/bean/Pic;->mWidth:I

    .line 21
    iput p5, p0, Lcom/tencent/tauth/bean/Pic;->mHeight:I

    .line 22
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/bean/Pic;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/tencent/tauth/bean/Pic;->mHeight:I

    return v0
.end method

.method public getLloc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tauth/bean/Pic;->mLloc:Ljava/lang/String;

    return-object v0
.end method

.method public getSloc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/tauth/bean/Pic;->mSloc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/tauth/bean/Pic;->mWidth:I

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/tauth/bean/Pic;->mAlbumId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/tencent/tauth/bean/Pic;->mHeight:I

    .line 67
    return-void
.end method

.method public setLloc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/tauth/bean/Pic;->mLloc:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSloc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/tauth/bean/Pic;->mSloc:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/tencent/tauth/bean/Pic;->mWidth:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/Pic;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlloc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/Pic;->mLloc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsloc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/Pic;->mSloc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nheight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tauth/bean/Pic;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tauth/bean/Pic;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
