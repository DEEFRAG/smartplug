.class public Lcom/kankunit/smartplugcronus/util/InterpolationUtil;
.super Ljava/lang/Object;
.source "InterpolationUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c2145298f6a2fe7L


# instance fields
.field private allowExtrapolation:Z

.field private x_val:[D

.field private y_val:[D

.field private z_val:[D


# direct methods
.method public constructor <init>([D[DZ)V
    .locals 3
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "allowExtrapolation"    # Z

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 69
    invoke-static {p1, p2, v2}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->sortInCrescent([D[DZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[D>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    .line 73
    .end local v0    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[D>;"
    :cond_0
    iput-boolean p3, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->allowExtrapolation:Z

    .line 74
    return-void
.end method

.method public constructor <init>([D[D[DZ)V
    .locals 1
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "z"    # [D
    .param p4, "allowExtrapolation"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    .line 85
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    .line 86
    :cond_2
    iput-boolean p4, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->allowExtrapolation:Z

    .line 87
    return-void
.end method

.method public static getMaximumValue([D)D
    .locals 5
    .param p0, "v"    # [D

    .prologue
    const/4 v4, 0x1

    .line 534
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid input."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 535
    :cond_0
    array-length v3, p0

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid input."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 536
    :cond_1
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    .line 537
    .local v1, "max":D
    array-length v3, p0

    if-le v3, v4, :cond_2

    .line 538
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_3

    .line 545
    .end local v0    # "i":I
    :cond_2
    return-wide v1

    .line 540
    .restart local v0    # "i":I
    :cond_3
    aget-wide v3, p0, v0

    cmpl-double v3, v3, v1

    if-lez v3, :cond_4

    .line 541
    aget-wide v1, p0, v0

    .line 538
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMinimumValue([D)D
    .locals 5
    .param p0, "v"    # [D

    .prologue
    const/4 v4, 0x1

    .line 512
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no points in the input data."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    :cond_0
    array-length v3, p0

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no points in the input data."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    :cond_1
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    .line 516
    .local v1, "min":D
    array-length v3, p0

    if-le v3, v4, :cond_2

    .line 517
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_3

    .line 524
    .end local v0    # "i":I
    :cond_2
    return-wide v1

    .line 519
    .restart local v0    # "i":I
    :cond_3
    aget-wide v3, p0, v0

    cmpg-double v3, v3, v1

    if-gez v3, :cond_4

    .line 520
    aget-wide v1, p0, v0

    .line 517
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static linearInterpolation([D[DDZ)D
    .locals 21
    .param p0, "x_val"    # [D
    .param p1, "y_val"    # [D
    .param p2, "x_point"    # D
    .param p4, "allowExtrapolation"    # Z

    .prologue
    .line 255
    move-object/from16 v0, p0

    array-length v6, v0

    .line 258
    .local v6, "v":I
    move-wide/from16 v9, p2

    .line 259
    .local v9, "x_prev":D
    move-wide/from16 v7, p2

    .line 260
    .local v7, "x_next":D
    const-wide/16 v15, 0x0

    .line 261
    .local v15, "y_prev":D
    const-wide/16 v11, 0x0

    .line 263
    .local v11, "y_next":D
    const/4 v3, 0x0

    .local v3, "iprev":I
    const/4 v2, 0x0

    .line 264
    .local v2, "inext":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_3

    .line 288
    if-eqz p4, :cond_9

    .line 290
    cmpl-double v17, v9, p2

    if-nez v17, :cond_0

    .line 292
    add-int/lit8 v17, v2, 0x1

    aget-wide v9, p0, v17

    .line 293
    add-int/lit8 v17, v2, 0x1

    aget-wide v15, p1, v17

    .line 295
    :cond_0
    cmpl-double v17, v7, p2

    if-nez v17, :cond_1

    .line 297
    add-int/lit8 v17, v3, -0x1

    aget-wide v7, p0, v17

    .line 298
    add-int/lit8 v17, v3, -0x1

    aget-wide v11, p1, v17

    .line 312
    :cond_1
    const-wide/16 v4, 0x0

    .line 313
    .local v4, "slope":D
    cmpl-double v17, v7, v9

    if-eqz v17, :cond_2

    .line 315
    sub-double v17, v11, v15

    sub-double v19, v7, v9

    div-double v4, v17, v19

    .line 317
    :cond_2
    sub-double v17, p2, v9

    mul-double v17, v17, v4

    add-double v13, v15, v17

    .line 319
    .end local v4    # "slope":D
    :goto_1
    return-wide v13

    .line 266
    :cond_3
    aget-wide v17, p0, v1

    cmpl-double v17, v17, p2

    if-nez v17, :cond_4

    .line 267
    aget-wide v13, p1, v1

    goto :goto_1

    .line 269
    :cond_4
    aget-wide v17, p0, v1

    cmpg-double v17, v17, p2

    if-gez v17, :cond_6

    aget-wide v17, p0, v1

    cmpl-double v17, v17, v9

    if-gtz v17, :cond_5

    cmpl-double v17, v9, p2

    if-nez v17, :cond_6

    .line 271
    :cond_5
    aget-wide v9, p0, v1

    .line 272
    aget-wide v15, p1, v1

    .line 273
    move v3, v1

    .line 277
    :cond_6
    aget-wide v17, p0, v1

    cmpl-double v17, v17, p2

    if-lez v17, :cond_8

    aget-wide v17, p0, v1

    cmpg-double v17, v17, v7

    if-ltz v17, :cond_7

    cmpl-double v17, v7, p2

    if-nez v17, :cond_8

    .line 279
    :cond_7
    aget-wide v7, p0, v1

    .line 280
    aget-wide v11, p1, v1

    .line 281
    move v2, v1

    .line 264
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_9
    cmpl-double v17, v9, p2

    if-eqz v17, :cond_a

    cmpl-double v17, v7, p2

    if-nez v17, :cond_1

    .line 306
    :cond_a
    new-instance v17, Ljava/lang/IllegalArgumentException;

    .line 307
    const-string v18, "interpolation point out of range, extrapolation required."

    .line 306
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public static sortInCrescent([D[DZ)Ljava/util/ArrayList;
    .locals 15
    .param p0, "x_val"    # [D
    .param p1, "y_val"    # [D
    .param p2, "eliminateRepeatedPoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DZ)",
            "Ljava/util/ArrayList",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 560
    array-length v9, p0

    .line 561
    .local v9, "size":I
    const/4 v3, -0x1

    .line 562
    .local v3, "min_value":I
    new-array v0, v9, [I

    .line 563
    .local v0, "flag_x":[I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v9, :cond_0

    .line 567
    new-array v7, v9, [D

    .line 568
    .local v7, "ordered_x":[D
    new-array v8, v9, [D

    .line 569
    .local v8, "ordered_y":[D
    const/4 v6, -0x1

    .line 570
    .local v6, "np":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v9, :cond_1

    .line 606
    add-int/lit8 v11, v6, 0x1

    new-array v4, v11, [D

    .line 607
    .local v4, "new_x":[D
    add-int/lit8 v11, v6, 0x1

    new-array v5, v11, [D

    .line 608
    .local v5, "new_y":[D
    const/4 v1, 0x0

    :goto_2
    if-le v1, v6, :cond_8

    .line 614
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v10, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[D>;"
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    return-object v10

    .line 565
    .end local v2    # "j":I
    .end local v4    # "new_x":[D
    .end local v5    # "new_y":[D
    .end local v6    # "np":I
    .end local v7    # "ordered_x":[D
    .end local v8    # "ordered_y":[D
    .end local v10    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[D>;"
    :cond_0
    const/4 v11, 0x0

    aput v11, v0, v1

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    .restart local v2    # "j":I
    .restart local v6    # "np":I
    .restart local v7    # "ordered_x":[D
    .restart local v8    # "ordered_y":[D
    :cond_1
    const/4 v3, -0x1

    .line 573
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v9, :cond_3

    .line 587
    const/4 v11, 0x1

    aput v11, v0, v3

    .line 590
    const/4 v11, -0x1

    if-ne v6, v11, :cond_6

    .line 592
    add-int/lit8 v6, v6, 0x1

    .line 593
    aget-wide v11, p0, v3

    aput-wide v11, v7, v6

    .line 594
    aget-wide v11, p1, v3

    aput-wide v11, v8, v6

    .line 570
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :cond_3
    aget v11, v0, v1

    if-nez v11, :cond_4

    .line 577
    if-ltz v3, :cond_5

    .line 579
    aget-wide v11, p0, v1

    aget-wide v13, p0, v3

    cmpg-double v11, v11, v13

    if-gez v11, :cond_4

    .line 580
    move v3, v1

    .line 573
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 583
    :cond_5
    move v3, v1

    goto :goto_5

    .line 597
    :cond_6
    aget-wide v11, v7, v6

    aget-wide v13, p0, v3

    cmpl-double v11, v11, v13

    if-nez v11, :cond_7

    if-nez p2, :cond_2

    .line 599
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 600
    aget-wide v11, p0, v3

    aput-wide v11, v7, v6

    .line 601
    aget-wide v11, p1, v3

    aput-wide v11, v8, v6

    goto :goto_4

    .line 610
    .restart local v4    # "new_x":[D
    .restart local v5    # "new_y":[D
    :cond_8
    aget-wide v11, v7, v1

    aput-wide v11, v4, v1

    .line 611
    aget-wide v11, v8, v1

    aput-wide v11, v5, v1

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public linearInterpolation(D)D
    .locals 21
    .param p1, "x_point"    # D

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v6, v0

    .line 105
    .local v6, "v":I
    move-wide/from16 v9, p1

    .line 106
    .local v9, "x_prev":D
    move-wide/from16 v7, p1

    .line 107
    .local v7, "x_next":D
    const-wide/16 v15, 0x0

    .line 108
    .local v15, "y_prev":D
    const-wide/16 v11, 0x0

    .line 110
    .local v11, "y_next":D
    const/4 v3, 0x0

    .local v3, "iprev":I
    const/4 v2, 0x0

    .line 111
    .local v2, "inext":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->allowExtrapolation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 137
    cmpl-double v17, v9, p1

    if-nez v17, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    aget-wide v9, v17, v18

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    aget-wide v15, v17, v18

    .line 142
    :cond_0
    cmpl-double v17, v7, p1

    if-nez v17, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    add-int/lit8 v18, v3, -0x1

    aget-wide v7, v17, v18

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v17, v0

    add-int/lit8 v18, v3, -0x1

    aget-wide v11, v17, v18

    .line 159
    :cond_1
    const-wide/16 v4, 0x0

    .line 160
    .local v4, "slope":D
    cmpl-double v17, v7, v9

    if-eqz v17, :cond_2

    .line 162
    sub-double v17, v11, v15

    sub-double v19, v7, v9

    div-double v4, v17, v19

    .line 164
    :cond_2
    sub-double v17, p1, v9

    mul-double v17, v17, v4

    add-double v13, v15, v17

    .line 166
    .end local v4    # "slope":D
    :goto_1
    return-wide v13

    .line 113
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v1

    cmpl-double v17, v17, p1

    if-nez v17, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v17, v0

    aget-wide v13, v17, v1

    goto :goto_1

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v1

    cmpg-double v17, v17, p1

    if-gez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v1

    cmpl-double v17, v17, v9

    if-gtz v17, :cond_5

    cmpl-double v17, v9, p1

    if-nez v17, :cond_6

    .line 118
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v9, v17, v1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v17, v0

    aget-wide v15, v17, v1

    .line 120
    move v3, v1

    .line 124
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v1

    cmpl-double v17, v17, p1

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v1

    cmpg-double v17, v17, v7

    if-ltz v17, :cond_7

    cmpl-double v17, v7, p1

    if-nez v17, :cond_8

    .line 126
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v17, v0

    aget-wide v7, v17, v1

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v17, v0

    aget-wide v11, v17, v1

    .line 128
    move v2, v1

    .line 111
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 149
    :cond_9
    cmpl-double v17, v9, p1

    if-eqz v17, :cond_a

    cmpl-double v17, v7, p1

    if-nez v17, :cond_1

    .line 153
    :cond_a
    new-instance v17, Ljava/lang/IllegalArgumentException;

    .line 154
    const-string v18, "interpolation point out of range, extrapolation required."

    .line 153
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public linearInterpolation3d(DD)D
    .locals 52
    .param p1, "x_point"    # D
    .param p3, "z_point"    # D

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    move-object/from16 v46, v0

    if-nez v46, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation(D)D

    move-result-wide v46

    .line 467
    :goto_0
    return-wide v46

    .line 364
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMinimumValue([D)D

    move-result-wide v29

    .line 365
    .local v29, "min":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMaximumValue([D)D

    move-result-wide v27

    .line 367
    .local v27, "max":D
    cmpg-double v46, p1, v29

    if-ltz v46, :cond_1

    cmpl-double v46, p1, v27

    if-lez v46, :cond_2

    .line 368
    :cond_1
    new-instance v46, Ljava/lang/IllegalArgumentException;

    const-string v47, "the interpolation x point is outside the x domain."

    invoke-direct/range {v46 .. v47}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 371
    :cond_2
    const-wide/16 v20, 0x0

    .local v20, "lowerX":D
    const-wide/16 v12, 0x0

    .line 372
    .local v12, "greaterX":D
    const/16 v19, 0x0

    .local v19, "lower":Z
    const/4 v11, 0x0

    .line 373
    .local v11, "greater":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v48, v0

    const/16 v46, 0x0

    :goto_1
    move/from16 v0, v46

    move/from16 v1, v48

    if-lt v0, v1, :cond_3

    .line 385
    cmpl-double v46, v12, v20

    if-nez v46, :cond_c

    .line 386
    const/16 v18, 0x0

    .line 387
    .local v18, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v48, v0

    const/16 v46, 0x0

    :goto_2
    move/from16 v0, v46

    move/from16 v1, v48

    if-lt v0, v1, :cond_8

    .line 390
    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v31, v0

    .line 391
    .local v31, "newY":[D
    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v32, v0

    .line 392
    .local v32, "newZ":[D
    const/16 v18, -0x1

    .line 393
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v17

    move/from16 v1, v46

    if-lt v0, v1, :cond_a

    .line 401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->allowExtrapolation:Z

    move/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-wide/from16 v2, p3

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation([D[DDZ)D

    move-result-wide v46

    goto/16 :goto_0

    .line 373
    .end local v17    # "i":I
    .end local v18    # "index":I
    .end local v31    # "newY":[D
    .end local v32    # "newZ":[D
    :cond_3
    aget-wide v7, v47, v46

    .line 374
    .local v7, "aX_val1":D
    cmpg-double v49, v7, p1

    if-gtz v49, :cond_5

    cmpl-double v49, v7, v20

    if-gtz v49, :cond_4

    if-nez v19, :cond_5

    .line 375
    :cond_4
    const/16 v19, 0x1

    .line 376
    move-wide/from16 v20, v7

    .line 378
    :cond_5
    cmpl-double v49, v7, p1

    if-ltz v49, :cond_7

    cmpg-double v49, v7, v12

    if-ltz v49, :cond_6

    if-nez v11, :cond_7

    .line 379
    :cond_6
    const/4 v11, 0x1

    .line 380
    move-wide v12, v7

    .line 373
    :cond_7
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 387
    .end local v7    # "aX_val1":D
    .restart local v18    # "index":I
    :cond_8
    aget-wide v5, v47, v46

    .line 388
    .local v5, "aX_val":D
    cmpl-double v49, v5, v20

    if-nez v49, :cond_9

    add-int/lit8 v18, v18, 0x1

    .line 387
    :cond_9
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 395
    .end local v5    # "aX_val":D
    .restart local v17    # "i":I
    .restart local v31    # "newY":[D
    .restart local v32    # "newZ":[D
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    cmpl-double v46, v46, v20

    if-nez v46, :cond_b

    .line 396
    add-int/lit8 v18, v18, 0x1

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    aput-wide v46, v31, v18

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    aput-wide v46, v32, v18

    .line 393
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 405
    .end local v17    # "i":I
    .end local v18    # "index":I
    .end local v31    # "newY":[D
    .end local v32    # "newZ":[D
    :cond_c
    const/16 v33, 0x0

    .local v33, "nlow":I
    const/16 v35, 0x0

    .line 406
    .local v35, "nup":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v48, v0

    const/16 v46, 0x0

    :goto_4
    move/from16 v0, v46

    move/from16 v1, v48

    if-lt v0, v1, :cond_e

    .line 412
    move/from16 v0, v33

    new-array v0, v0, [D

    move-object/from16 v25, v0

    .line 413
    .local v25, "lowy":[D
    move/from16 v0, v33

    new-array v0, v0, [D

    move-object/from16 v26, v0

    .line 414
    .local v26, "lowz":[D
    move/from16 v0, v35

    new-array v0, v0, [D

    move-object/from16 v36, v0

    .line 415
    .local v36, "upy":[D
    move/from16 v0, v35

    new-array v0, v0, [D

    move-object/from16 v37, v0

    .line 416
    .local v37, "upz":[D
    const/16 v33, -0x1

    .line 417
    const/16 v35, -0x1

    .line 418
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v17

    move/from16 v1, v46

    if-lt v0, v1, :cond_11

    .line 432
    const/16 v46, 0x1

    move/from16 v0, v33

    move/from16 v1, v46

    if-lt v0, v1, :cond_d

    const/16 v46, 0x1

    move/from16 v0, v35

    move/from16 v1, v46

    if-ge v0, v1, :cond_14

    .line 433
    :cond_d
    new-instance v46, Ljava/lang/IllegalArgumentException;

    const-string v47, "the z domain axis contains no points."

    invoke-direct/range {v46 .. v47}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 406
    .end local v17    # "i":I
    .end local v25    # "lowy":[D
    .end local v26    # "lowz":[D
    .end local v36    # "upy":[D
    .end local v37    # "upz":[D
    :cond_e
    aget-wide v5, v47, v46

    .line 407
    .restart local v5    # "aX_val":D
    cmpl-double v49, v5, v20

    if-nez v49, :cond_f

    add-int/lit8 v33, v33, 0x1

    .line 408
    :cond_f
    cmpl-double v49, v5, v12

    if-nez v49, :cond_10

    add-int/lit8 v35, v35, 0x1

    .line 406
    :cond_10
    add-int/lit8 v46, v46, 0x1

    goto :goto_4

    .line 420
    .end local v5    # "aX_val":D
    .restart local v17    # "i":I
    .restart local v25    # "lowy":[D
    .restart local v26    # "lowz":[D
    .restart local v36    # "upy":[D
    .restart local v37    # "upz":[D
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    cmpl-double v46, v46, v20

    if-nez v46, :cond_12

    .line 421
    add-int/lit8 v33, v33, 0x1

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    aput-wide v46, v25, v33

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    aput-wide v46, v26, v33

    .line 425
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    cmpl-double v46, v46, v12

    if-nez v46, :cond_13

    .line 426
    add-int/lit8 v35, v35, 0x1

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    aput-wide v46, v36, v35

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v17

    aput-wide v46, v37, v35

    .line 418
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 436
    :cond_14
    invoke-static/range {v26 .. v26}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMaximumValue([D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v15, v0

    .line 437
    .local v15, "greatest_z1":I
    invoke-static/range {v37 .. v37}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMaximumValue([D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v16, v0

    .line 438
    .local v16, "greatest_z2":I
    move v14, v15

    .line 439
    .local v14, "greatest_z":I
    move/from16 v0, v16

    if-le v0, v15, :cond_15

    move/from16 v14, v16

    .line 441
    :cond_15
    invoke-static/range {v26 .. v26}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMinimumValue([D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v23, v0

    .line 442
    .local v23, "lowest_z1":I
    invoke-static/range {v37 .. v37}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMinimumValue([D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v24, v0

    .line 443
    .local v24, "lowest_z2":I
    move/from16 v22, v23

    .line 444
    .local v22, "lowest_z":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_16

    move/from16 v22, v24

    .line 447
    :cond_16
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v48, v0

    aput-wide v48, v46, v47

    const/16 v47, 0x1

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v48, v0

    aput-wide v48, v46, v47

    invoke-static/range {v46 .. v46}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->getMaximumValue([D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v46, v0

    mul-int/lit8 v34, v46, 0x2

    .line 451
    .local v34, "np":I
    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v45, v0

    .line 452
    .local v45, "zz":[D
    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 453
    .local v38, "yy":[D
    sub-double v46, p1, v20

    sub-double v48, v12, v20

    div-double v9, v46, v48

    .line 454
    .local v9, "frac":D
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v34

    if-lt v0, v1, :cond_17

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->allowExtrapolation:Z

    move/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v38

    move-wide/from16 v2, p3

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation([D[DDZ)D

    move-result-wide v46

    goto/16 :goto_0

    .line 456
    :cond_17
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v46, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v48, v0

    sub-int v50, v14, v22

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v48, v48, v50

    add-int/lit8 v50, v34, -0x1

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    div-double v48, v48, v50

    add-double v43, v46, v48

    .line 457
    .local v43, "z":D
    aput-wide v43, v45, v17

    .line 459
    const/16 v46, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-wide/from16 v2, v43

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation([D[DDZ)D

    move-result-wide v39

    .line 460
    .local v39, "yy1":D
    const/16 v46, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-wide/from16 v2, v43

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation([D[DDZ)D

    move-result-wide v41

    .line 464
    .local v41, "yy2":D
    sub-double v46, v41, v39

    mul-double v46, v46, v9

    add-double v46, v46, v39

    aput-wide v46, v38, v17

    .line 454
    add-int/lit8 v17, v17, 0x1

    goto :goto_6
.end method

.method public linearInterpolation3dInLogScale(DD)D
    .locals 13
    .param p1, "x_point"    # D
    .param p3, "z_point"    # D

    .prologue
    .line 484
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 485
    .local v0, "bx":[D
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 486
    .local v1, "by":[D
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 488
    .local v2, "bz":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v10, v10

    if-lt v3, v10, :cond_0

    .line 494
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 495
    .local v4, "px":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 496
    .local v8, "pz":D
    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation3d(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 498
    .local v6, "py":D
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    .line 499
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    .line 500
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    .line 501
    return-wide v6

    .line 490
    .end local v4    # "px":D
    .end local v6    # "py":D
    .end local v8    # "pz":D
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v11, v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    aput-wide v11, v10, v3

    .line 491
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    aget-wide v11, v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    aput-wide v11, v10, v3

    .line 492
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->z_val:[D

    aget-wide v11, v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    aput-wide v11, v10, v3

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public linearInterpolationInLogScale(D)D
    .locals 9
    .param p1, "x_point"    # D

    .prologue
    .line 334
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v7, v7

    new-array v5, v7, [D

    .line 335
    .local v5, "x":[D
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v7, v7

    new-array v6, v7, [D

    .line 336
    .local v6, "y":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v7, v7

    if-lt v0, v7, :cond_0

    .line 341
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    .line 342
    .local v1, "px":D
    iget-boolean v7, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->allowExtrapolation:Z

    invoke-static {v5, v6, v1, v2, v7}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation([D[DDZ)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    .line 344
    .local v3, "py":D
    return-wide v3

    .line 338
    .end local v1    # "px":D
    .end local v3    # "py":D
    :cond_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    aput-wide v7, v5, v0

    .line 339
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    aput-wide v7, v6, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public splineInterpolation(D)D
    .locals 21
    .param p1, "px"    # D

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v13, v13

    add-int/lit8 v13, v13, 0x3

    new-array v12, v13, [D

    .line 186
    .local v12, "z":[D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v13, v13

    add-int/lit8 v13, v13, 0x3

    new-array v8, v13, [D

    .line 190
    .local v8, "mm":[D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    array-length v13, v13

    add-int/lit8 v11, v13, -0x1

    .line 191
    .local v11, "v":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v13, v13, v11

    cmpl-double v13, p1, v13

    if-nez v13, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    aget-wide v9, v13, v11

    .line 234
    :goto_0
    return-wide v9

    .line 193
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v11, :cond_2

    .line 199
    add-int/lit8 v13, v11, 0x2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v16, v11, 0x1

    aget-wide v16, v8, v16

    mul-double v14, v14, v16

    aget-wide v16, v8, v11

    sub-double v14, v14, v16

    aput-wide v14, v8, v13

    .line 200
    add-int/lit8 v13, v11, 0x3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v16, v11, 0x2

    aget-wide v16, v8, v16

    mul-double v14, v14, v16

    add-int/lit8 v16, v11, 0x1

    aget-wide v16, v8, v16

    sub-double v14, v14, v16

    aput-wide v14, v8, v13

    .line 201
    const/4 v13, 0x2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/16 v16, 0x3

    aget-wide v16, v8, v16

    mul-double v14, v14, v16

    const/16 v16, 0x4

    aget-wide v16, v8, v16

    sub-double v14, v14, v16

    aput-wide v14, v8, v13

    .line 202
    const/4 v13, 0x1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/16 v16, 0x2

    aget-wide v16, v8, v16

    mul-double v14, v14, v16

    const/16 v16, 0x3

    aget-wide v16, v8, v16

    sub-double v14, v14, v16

    aput-wide v14, v8, v13

    .line 204
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v11, :cond_3

    .line 221
    const/4 v7, 0x1

    .line 223
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v13, v13, v7

    cmpl-double v13, p1, v13

    if-ltz v13, :cond_1

    if-lt v7, v11, :cond_6

    .line 228
    :cond_1
    add-int/lit8 v7, v7, -0x1

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    add-int/lit8 v14, v7, 0x1

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v15, v15, v7

    sub-double v1, v13, v15

    .line 230
    .local v1, "B":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v13, v13, v7

    sub-double v3, p1, v13

    .line 231
    .local v3, "a":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    aget-wide v13, v13, v7

    aget-wide v15, v12, v7

    mul-double/2addr v15, v3

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    add-int/lit8 v17, v7, 0x2

    aget-wide v17, v8, v17

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    aget-wide v19, v12, v7

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    add-int/lit8 v17, v7, 0x1

    aget-wide v17, v12, v17

    sub-double v15, v15, v17

    mul-double/2addr v15, v3

    mul-double/2addr v15, v3

    div-double/2addr v15, v1

    add-double v9, v13, v15

    .line 232
    .local v9, "py":D
    aget-wide v13, v12, v7

    add-int/lit8 v15, v7, 0x1

    aget-wide v15, v12, v15

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    add-int/lit8 v17, v7, 0x2

    aget-wide v17, v8, v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    mul-double/2addr v13, v3

    mul-double/2addr v13, v3

    mul-double/2addr v13, v3

    mul-double v15, v1, v1

    div-double/2addr v13, v15

    add-double/2addr v9, v13

    .line 234
    goto/16 :goto_0

    .line 195
    .end local v1    # "B":D
    .end local v3    # "a":D
    .end local v9    # "py":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    add-int/lit8 v14, v7, 0x1

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->x_val:[D

    aget-wide v15, v15, v7

    sub-double v5, v13, v15

    .line 196
    .local v5, "cqc":D
    add-int/lit8 v13, v7, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->y_val:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v7

    sub-double v14, v14, v16

    div-double/2addr v14, v5

    aput-wide v14, v8, v13

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 206
    .end local v5    # "cqc":D
    :cond_3
    add-int/lit8 v13, v7, 0x3

    aget-wide v13, v8, v13

    add-int/lit8 v15, v7, 0x2

    aget-wide v15, v8, v15

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 207
    .restart local v3    # "a":D
    add-int/lit8 v13, v7, 0x1

    aget-wide v13, v8, v13

    aget-wide v15, v8, v7

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 208
    .restart local v1    # "B":D
    add-double v13, v3, v1

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_4

    .line 210
    add-int/lit8 v13, v7, 0x2

    aget-wide v13, v8, v13

    add-int/lit8 v15, v7, 0x1

    aget-wide v15, v8, v15

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    aput-wide v13, v12, v7

    .line 204
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 213
    :cond_4
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double v5, v13, v1

    .line 214
    .restart local v5    # "cqc":D
    const-wide/16 v13, 0x0

    cmpl-double v13, v5, v13

    if-nez v13, :cond_5

    .line 216
    const-wide v5, 0x39b4484bfeebc2a0L    # 1.0E-30

    .line 218
    :cond_5
    add-int/lit8 v13, v7, 0x1

    aget-wide v13, v8, v13

    mul-double/2addr v13, v3

    add-int/lit8 v15, v7, 0x2

    aget-wide v15, v8, v15

    mul-double/2addr v15, v1

    add-double/2addr v13, v15

    div-double/2addr v13, v5

    aput-wide v13, v12, v7

    goto :goto_4

    .line 225
    .end local v1    # "B":D
    .end local v3    # "a":D
    .end local v5    # "cqc":D
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method
