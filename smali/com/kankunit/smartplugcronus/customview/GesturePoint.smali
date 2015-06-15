.class public Lcom/kankunit/smartplugcronus/customview/GesturePoint;
.super Ljava/lang/Object;
.source "GesturePoint.java"


# instance fields
.field private bottomY:I

.field private centerX:I

.field private centerY:I

.field private image:Landroid/widget/ImageView;

.field private leftX:I

.field private num:I

.field private pointState:I

.field private rightX:I

.field private topY:I


# direct methods
.method public constructor <init>(IIIILandroid/widget/ImageView;I)V
    .locals 1
    .param p1, "leftX"    # I
    .param p2, "rightX"    # I
    .param p3, "topY"    # I
    .param p4, "bottomY"    # I
    .param p5, "image"    # Landroid/widget/ImageView;
    .param p6, "num"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    .line 55
    iput p2, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    .line 56
    iput p3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    .line 57
    iput p4, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    .line 58
    iput-object p5, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    .line 60
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->centerX:I

    .line 61
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->centerY:I

    .line 63
    iput p6, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->num:I

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-ne p0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 170
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 171
    check-cast v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .line 172
    .local v0, "other":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 173
    goto :goto_0

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 175
    iget-object v3, v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    move v1, v2

    .line 176
    goto :goto_0

    .line 177
    :cond_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 178
    goto :goto_0

    .line 179
    :cond_6
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 180
    goto :goto_0

    .line 181
    :cond_7
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 182
    goto :goto_0

    .line 183
    :cond_8
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 184
    goto :goto_0
.end method

.method public getBottomY()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->centerX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->centerY:I

    return v0
.end method

.method public getImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftX()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    return v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->num:I

    return v0
.end method

.method public getPointState()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->pointState:I

    return v0
.end method

.method public getRightX()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    return v0
.end method

.method public getTopY()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 153
    const/16 v0, 0x1f

    .line 154
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 155
    .local v1, "result":I
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    add-int/lit8 v1, v2, 0x1f

    .line 156
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 157
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    add-int v1, v2, v3

    .line 158
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    add-int v1, v2, v3

    .line 159
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    add-int v1, v2, v3

    .line 160
    return v1

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setBottomY(I)V
    .locals 0
    .param p1, "bottomY"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    .line 96
    return-void
.end method

.method public setCenterX(I)V
    .locals 0
    .param p1, "centerX"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->centerX:I

    .line 112
    return-void
.end method

.method public setCenterY(I)V
    .locals 0
    .param p1, "centerY"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->centerY:I

    .line 120
    return-void
.end method

.method public setImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    .line 104
    return-void
.end method

.method public setLeftX(I)V
    .locals 0
    .param p1, "leftX"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    .line 72
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->num:I

    .line 149
    return-void
.end method

.method public setPointState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->pointState:I

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->image:Landroid/widget/ImageView;

    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRightX(I)V
    .locals 0
    .param p1, "rightX"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    .line 80
    return-void
.end method

.method public setTopY(I)V
    .locals 0
    .param p1, "topY"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Point [leftX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->leftX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->rightX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->topY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->bottomY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
